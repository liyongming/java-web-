package util;

/**
 * Created by Administrator on 2017/8/19.
 */
public class PageNumber {
    private int pageNumber;
    private int startNumber;
    private int endNumber;
    private static int evPage = 8;
    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public int getStartNumber() {
        return startNumber;
    }

    public void setStartNumber(int startNumber) {
        this.startNumber = startNumber;
    }

    public int getEndNumber() {
        return endNumber;
    }

    public void setEndNumber(int endNumber) {
        this.endNumber = endNumber;
    }

    /**
     * 获取第几页
     * @param pageNumber
     * @return
     */
    public static int pageNummber(int pageNumber){
        return pageNumber;
    }

    /**
     * 开始
     * @param pageNumber
     * @return
     */
    public static int startPageNumber(int pageNumber){
        int startPageNumber = (pageNumber-1)*evPage+1;
        return startPageNumber;
    }

    /**
     * 结束
     * @return
     */
    public static int endPageNumber(int pageNumber){
        int endPageNumber = pageNumber * evPage;
        return endPageNumber;
    }
}
