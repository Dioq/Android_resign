.class public Lcom/my/fridademo/StaticInnerClass;
.super Ljava/lang/Object;
.source "StaticInnerClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/fridademo/StaticInnerClass$Inner;
    }
.end annotation


# instance fields
.field num:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x58

    iput v0, p0, Lcom/my/fridademo/StaticInnerClass;->num:I

    return-void
.end method
