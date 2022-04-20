.class public Lcom/my/fridademo/Student;
.super Ljava/lang/Object;
.source "Student.java"


# instance fields
.field age:I

.field gender:Ljava/lang/String;

.field isPassed:Z

.field name:Ljava/lang/String;

.field points:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IDZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "gender"    # Ljava/lang/String;
    .param p3, "age"    # I
    .param p4, "points"    # D
    .param p6, "isPassed"    # Z

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/my/fridademo/Student;->name:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/my/fridademo/Student;->gender:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/my/fridademo/Student;->age:I

    .line 15
    iput-wide p4, p0, Lcom/my/fridademo/Student;->points:D

    .line 16
    iput-boolean p6, p0, Lcom/my/fridademo/Student;->isPassed:Z

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Student{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/my/fridademo/Student;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/my/fridademo/Student;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/fridademo/Student;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", points="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/my/fridademo/Student;->points:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isPassed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/my/fridademo/Student;->isPassed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
