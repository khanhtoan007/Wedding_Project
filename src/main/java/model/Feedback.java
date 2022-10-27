package model;

public class Feedback {
    private String idFeedback;
    private int ratingStar;
    private String comments;

    public Feedback(String idFeedback, int ratingStar, String comments) {
        this.idFeedback = idFeedback;
        this.ratingStar = ratingStar;
        this.comments = comments;
    }

    public Feedback() {
    }

    public String getIdFeedback() {
        return idFeedback;
    }

    public void setIdFeedback(String idFeedback) {
        this.idFeedback = idFeedback;
    }

    public int getRatingStar() {
        return ratingStar;
    }

    public void setRatingStar(int ratingStar) {
        this.ratingStar = ratingStar;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "idFeedback='" + idFeedback + '\'' +
                ", ratingStar=" + ratingStar +
                ", comments='" + comments + '\'' +
                '}';
    }
}
