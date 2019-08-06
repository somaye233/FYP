using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
/// <summary>
/// Summary description for TaskManager
/// </summary>
public class TaskManager
{
    public TaskManager()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public System.Data.OleDb.OleDbConnection dbConn()
    {
        System.Data.OleDb.OleDbConnection conn = new
       System.Data.OleDb.OleDbConnection();
        conn.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source
             =C:\Users\mohammad\Documents\Visual Studio 2015\WebSites\fypManagment\App_Code\fit.accdb;
                 Persist Security Info=True;";
        return conn;
    }
    public int login (string userName, string password)
    {
        /*
         * Admin 1
         * Supervisor 2
         * Moderator 3
         * Managmnet 4
         * Student 5
         * Wrong credntial 0
         * In-Active Account -1
         * */
        OleDbConnection conn = dbConn();
        int retVal = 0;
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [User] where user_id = '"+userName+"' AND user_password='"+password+"'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if(dr.HasRows)
        {
            if (dr.GetInt32(3) == 0)
                retVal = -1;
                    else
                    {
                        string userRole = dr.GetString(2);
                        if (userRole.Equals("admin")) retVal = 1;
                        else if (userRole.Equals("supervisor")) retVal = 2;
                        else if (userRole.Equals("moderator")) retVal = 3;
                        else if (userRole.Equals("managmnet")) retVal = 4;
                        else if (userRole.Equals("student")) retVal = 5;
                    }
         }
        conn.Close();
        return retVal;
    }
    public bool checkUserName(string userName)
    {
        OleDbConnection conn = dbConn();
        bool retVal = true;
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [User] where user_id = '" + userName + "'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
            retVal = false;
        conn.Close();
        return retVal;
    }
    public void registeruser(string userName,string password,string type,string fullName)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("INSERT INTO [User] (user_id,user_password,user_role,user_status,user_name) VALUES('"+userName+"','"+password+"','"+type.ToLower()+"',0,'"+fullName+"')", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public List<string> getUserNames(int status)
    {
        List<string> retVal = new List<string>();
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT user_id FROM [User] where user_status = " + status, conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows)
                retVal.Add(dr.GetString(0));
        }
        conn.Close();
        return retVal;
    }
    public List<string> getUserDetails(string userName)
    {
        List<string> retVal = new List<string>();
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [User] where user_id = '" + userName + "'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr.HasRows)
            {
                retVal.Add(dr.GetString(2));
                retVal.Add(dr.GetString(4));
            }
        }
        conn.Close();
        return retVal;
    }
    public int getUserType(string userName)
    {
        OleDbConnection conn = dbConn();
        int retVal = 0;
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [User] where user_id = '" + userName + "'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            if (dr.GetInt32(3) == 0)
                retVal = -1;
            else
            {
                string userRole = dr.GetString(2);
                if (userRole.Equals("admin")) retVal = 1;
                else if (userRole.Equals("Supervisor")) retVal = 2;
                else if (userRole.Equals("moderator")) retVal = 3;
                else if (userRole.Equals("managmnet")) retVal = 4;
                else if (userRole.Equals("student")) retVal = 5;
            }
        }
        conn.Close();
        return retVal;
    }
    public void approveUser(string userName)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [User] SET user_status=1 WHERE user_id='"+userName+"'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if(getUserType(userName)==5)
        {
            conn = dbConn();
            cmd = new OleDbCommand("INSERT INTO [Student] (user_id,student_specialization,supervisor,project_title,moderator) VALUES('" + userName + "','NONE','NONE','NONE','NONE')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
    public List<string> getSupervisor()
    {
        List<string> retVal = new List<string>();
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT user_id FROM [User] where user_status = 1 AND user_role='supervisor'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows)
                retVal.Add(dr.GetString(0));
        }
        conn.Close();
        return retVal;
    }
    public List<string> getModerator()
    {
        List<string> retVal = new List<string>();
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT user_id FROM [User] where user_status = 1 AND user_role='moderator'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows)
                retVal.Add(dr.GetString(0));
        }
        conn.Close();
        return retVal;
    }
    public List<string> getUnAssigneStudent()
    {
        List<string> retVal = new List<string>();
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT user_id FROM [Student] where supervisor = 'NONE'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows)
                retVal.Add(dr.GetString(0));
        }
        conn.Close();
        return retVal;
    }
    public void updateStudentDetails(string userName,string sp, string super,string title,string moder)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [Student] SET student_specialization='"+sp+ "',supervisor='"+super+ "', project_title='"+title+ "', moderator='"+ moder+"' WHERE user_id='" + userName+"'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void removeUser(string userName)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("DELETE FROM [User] WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        cmd = new OleDbCommand("DELETE FROM [Student] WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public List<string> getSupStudent(string userName)
    {
        List<string> retVal = new List<string>();
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT user_id FROM [Student] where supervisor = '"+ userName+"'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows)
                retVal.Add(dr.GetString(0));
        }
        conn.Close();
        return retVal;
    }
    public List<string> getModStudent(string userName)
    {
        List<string> retVal = new List<string>();
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT user_id FROM [Student] where moderator = '" + userName + "'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows)
                retVal.Add(dr.GetString(0));
        }
        conn.Close();
        return retVal;
    }
    public List<string> getAllStudent()
    {
        List<string> retVal = new List<string>();
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT user_id FROM [Student] ", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows)
                retVal.Add(dr.GetString(0));
        }
        conn.Close();
        return retVal;
    }

    public void insertToFYPtables(string userName)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("INSERT INTO [FYP1] (user_id,s_writing,s_oral,s_general,m_writing,m_oral) VALUES('" + userName + "','0','0','0','0','0')", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        conn = dbConn();
        cmd = new OleDbCommand("INSERT INTO [FYP2] (user_id,s_writing,s_imple,s_poster,s_general,m_writing,m_imple,m_poster) VALUES('" + userName + "','0','0','0','0','0','0','0')", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public List<string> loadFyp2(string userName)
    {
        OleDbConnection conn = dbConn();
        List<string> retVal = new List<string>();
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [FYP2] where user_id = '" + userName + "'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            retVal.Add(dr.GetString(1));
            retVal.Add(dr.GetString(2));
            retVal.Add(dr.GetString(3));
            retVal.Add(dr.GetString(4));
            retVal.Add(dr.GetString(5));
            retVal.Add(dr.GetString(6));
            retVal.Add(dr.GetString(7));
        }
        conn.Close();
        return retVal;
    }
    public List<string> loadFyp1(string userName)
    {
        OleDbConnection conn = dbConn();
        List<string> retVal = new List<string>();
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [FYP1] where user_id = '" + userName + "'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            retVal.Add(dr.GetString(1));
            retVal.Add(dr.GetString(2));
            retVal.Add(dr.GetString(3));
            retVal.Add(dr.GetString(4));
            retVal.Add(dr.GetString(5));
           
        }
        conn.Close();
        return retVal;
    }
    public void updateFyp1WritingSup(string userName,string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP1] SET s_writing='"+score+"' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFyp1OralSup(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP1] SET s_oral='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFyp1GeneralSup(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP1] SET s_general='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFyp1WritingMod(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP1] SET m_writing='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFyp1OralMod(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP1] SET m_oral='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    //////////////////////////
    public void updateFyp2WritingSup(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP2] SET s_writing='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFyp2WritingMod(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP2] SET m_writing='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFypImplSup(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP2] SET s_imple='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFypImplMod(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP2] SET m_imple='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFyp2PosSup(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP2] SET s_poster='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFyp2PosMod(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP2] SET m_poster='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void updateFyp2GeneralSup(string userName, string score)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [FYP2] SET s_general='" + score + "' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public void finalize(string userName,string fyp1,string fyp2)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("INSERT INTO [final] (user_id,FYP1,FYP2) VALUES('" + userName + "','" + fyp1 + "','" + fyp2 + "')", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public bool isFinal(string userName)
    {
        bool retVal = false;
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [final] where user_id = '" + userName + "'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
            retVal = true;
        conn.Close();
        return retVal;

    }
    public List<string> getFinalResult(string userName)
    {
        List<string> retVal = new List<string>();
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [final] where user_id = '" + userName + "'", conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            retVal.Add(dr.GetString(1));
            retVal.Add(dr.GetString(2));
        }
        conn.Close();
        return retVal;

    }
    public void updateFinalResult(string userName, string fyp1, string fyp2)
    {
        OleDbConnection conn = dbConn();
        OleDbCommand cmd = new OleDbCommand("UPDATE [final] SET FYP1='" + fyp1 + "', FYP2='"+fyp2+"' WHERE user_id='" + userName + "'", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}