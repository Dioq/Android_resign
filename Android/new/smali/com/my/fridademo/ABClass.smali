.class abstract Lcom/my/fridademo/ABClass;
.super Ljava/lang/Object;
.source "ABClass.java"


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "ABClass:"

    iput-object v0, p0, Lcom/my/fridademo/ABClass;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public say(Ljava/lang/String;)V
    .locals 2
    .param p1, "sentence"    # Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/my/fridademo/ABClass;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/fridademo/ABClass;->name:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public say2(Ljava/lang/String;)V
    .locals 2
    .param p1, "sentence"    # Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/my/fridademo/ABClass;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/fridademo/ABClass;->name:Ljava/lang/String;

    .line 13
    return-void
.end method
