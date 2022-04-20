.class public Lcom/my/fridademo/MySingleton;
.super Ljava/lang/Object;
.source "MySingleton.java"


# static fields
.field private static INSTANCE:Lcom/my/fridademo/MySingleton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/my/fridademo/MySingleton;

    invoke-direct {v0}, Lcom/my/fridademo/MySingleton;-><init>()V

    sput-object v0, Lcom/my/fridademo/MySingleton;->INSTANCE:Lcom/my/fridademo/MySingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static getInstance()Lcom/my/fridademo/MySingleton;
    .locals 1

    .line 10
    sget-object v0, Lcom/my/fridademo/MySingleton;->INSTANCE:Lcom/my/fridademo/MySingleton;

    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p1"    # Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " go post"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
