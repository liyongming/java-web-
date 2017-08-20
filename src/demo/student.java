package demo;

/**
 * Created by Administrator on 2017/8/19.
 */
public class student {
    private int stu_id;
    private classes classes;
    private String stu_name;
    private String sex;
    private int age;

    public int getStu_id() {
        return stu_id;
    }

    public void setStu_id(int stu_id) {
        this.stu_id = stu_id;
    }

    public demo.classes getClasses() {
        return classes;
    }

    public void setClasses(classes classes) {
        this.classes = classes;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
