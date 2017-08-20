package service.student;

import dao.student.studentDao;
import demo.student;
import util.PageNumber;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/8/19.
 */
public class listStudentService {
    private studentDao studentDao;

    public listStudentService() {
        this.studentDao = new studentDao();
    }

    public List<student> selectStudent(student student, int pageNumber){
        List<student> selectStudent =  new ArrayList<student>();
        int pageNumbers = PageNumber.pageNummber(pageNumber);
        int startPageNumber = PageNumber.startPageNumber(pageNumbers);
        int endPageNumber = PageNumber.endPageNumber(pageNumbers);
        selectStudent = this.studentDao.selectStudent(student,startPageNumber,endPageNumber);
        return selectStudent;
    }

    public int deleteStudent(String id){
        int count = studentDao.deleteStudent(id);
        return count;
    }

    public int addStudent(student student){
        int count = studentDao.addStudent(student);
        return count;
    }

}
