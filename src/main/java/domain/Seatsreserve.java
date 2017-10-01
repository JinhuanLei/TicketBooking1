package domain;

public class Seatsreserve {
    private int seatsid;
    private String seatsNum;
    private String date;

    public int getSeatsid() {
        return seatsid;
    }

    public void setSeatsid(int seatsid) {
        this.seatsid = seatsid;
    }

    public String getSeatsNum() {
        return seatsNum;
    }

    public void setSeatsNum(String seatsNum) {
        this.seatsNum = seatsNum;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Seats:[seatsid:  "+seatsid+"seatsNum: " +seatsNum+"Date: " +date+"]";
    }
}
