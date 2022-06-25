.class public Lcom/my/fridademo/OuterClass;
.super Ljava/lang/Object;
.source "OuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/fridademo/OuterClass$InternalClass;
    }
.end annotation


# instance fields
.field waibu:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0xc

    iput v0, p0, Lcom/my/fridademo/OuterClass;->waibu:I

    return-void
.end method


# virtual methods
.method public say2()V
    .locals 2

    .line 7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u8fd9\u662f\u5916\u90e8\u7c7b\u5f53\u4e2d\u7684\u65b9\u6cd5"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    return-void
.end method
