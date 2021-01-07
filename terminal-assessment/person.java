class person {
    private int score;

    public person(int score)
    {
        this.score = score;
    }

    public int getScore()
    {
        return this.score;
    }

    public static void main (String [] args)
    {
        person p = new person(88);
        p.getScore();
    }
}