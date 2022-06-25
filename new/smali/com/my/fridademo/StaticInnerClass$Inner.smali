.class Lcom/my/fridademo/StaticInnerClass$Inner;
.super Ljava/lang/Object;
.source "StaticInnerClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/fridademo/StaticInnerClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Inner"
.end annotation


# instance fields
.field num:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x63

    iput v0, p0, Lcom/my/fridademo/StaticInnerClass$Inner;->num:I

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "=== public Inner() ==="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public func1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/my/fridademo/StaticInnerClass;

    invoke-direct {v0}, Lcom/my/fridademo/StaticInnerClass;-><init>()V

    iget v0, v0, Lcom/my/fridademo/StaticInnerClass;->num:I

    .line 16
    .local v0, "num1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StaticInnerClass_func1-> num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/my/fridademo/StaticInnerClass$Inner;->num:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "parma:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
