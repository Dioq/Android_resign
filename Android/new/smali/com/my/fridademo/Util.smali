.class public Lcom/my/fridademo/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static myInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "grade"    # I

    .line 37
    const/16 v0, 0x5a

    if-le p1, v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,\u4f60\u662f\u4e00\u4e2a\u4f18\u79c0\u7684\u5b66\u751f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    const/16 v1, 0x3c

    if-lt p1, v1, :cond_1

    if-gt p1, v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u662f\u4e00\u4e2a\u4e2d\u7b49\u751f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u662f\u4e00\u4e2a\u5dee\u5b66\u751f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public func1(I)I
    .locals 1
    .param p1, "num"    # I

    .line 32
    mul-int/lit8 v0, p1, 0xa

    return v0
.end method

.method public judgeByAge(I)Ljava/lang/String;
    .locals 2
    .param p1, "age"    # I

    .line 13
    const-string v0, ""

    .line 14
    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0x12

    if-ge p1, v1, :cond_0

    .line 15
    const-string v0, "\u672a\u6210\u5e74"

    goto :goto_0

    .line 16
    :cond_0
    if-lt p1, v1, :cond_1

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_1

    .line 17
    const-string v0, "\u4e2d\u5e74\u4eba"

    goto :goto_0

    .line 19
    :cond_1
    const-string v0, "\u8001\u5e74\u4eba"

    .line 21
    :goto_0
    return-object v0
.end method

.method public judgeByAge(II)Ljava/lang/String;
    .locals 1
    .param p1, "age"    # I
    .param p2, "grade"    # I

    .line 26
    const-string v0, "\u5bf9\u7167\u65b9\u6cd5"

    return-object v0
.end method

.method public ordinaryFunc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "gender"    # Ljava/lang/String;
    .param p3, "age"    # I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u59d3\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\u6027\u522b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5e74\u9f84:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
