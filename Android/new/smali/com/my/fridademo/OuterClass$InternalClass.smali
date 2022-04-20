.class Lcom/my/fridademo/OuterClass$InternalClass;
.super Ljava/lang/Object;
.source "OuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/fridademo/OuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalClass"
.end annotation


# instance fields
.field neibu:I

.field final synthetic this$0:Lcom/my/fridademo/OuterClass;


# direct methods
.method constructor <init>(Lcom/my/fridademo/OuterClass;)V
    .locals 1
    .param p1, "this$0"    # Lcom/my/fridademo/OuterClass;

    .line 10
    iput-object p1, p0, Lcom/my/fridademo/OuterClass$InternalClass;->this$0:Lcom/my/fridademo/OuterClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xd

    iput v0, p0, Lcom/my/fridademo/OuterClass$InternalClass;->neibu:I

    return-void
.end method


# virtual methods
.method public sayit()V
    .locals 4

    .line 14
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u8fd9\u662f\u5185\u90e8\u7c7b\u91cc\u9762\u7684\u65b9\u6cd5"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f7f\u7528\u5185\u90e8\u7c7b\u548c\u5916\u90e8\u7c7b\u5f53\u4e2d\u7684\u6570\u503c\u8fdb\u884c\u60f3\u52a0\u7684\u7ed3\u679c\u662f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/my/fridademo/OuterClass$InternalClass;->neibu:I

    iget-object v3, p0, Lcom/my/fridademo/OuterClass$InternalClass;->this$0:Lcom/my/fridademo/OuterClass;

    iget v3, v3, Lcom/my/fridademo/OuterClass;->waibu:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public sayit2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " _ sayit2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    return-object p1
.end method
