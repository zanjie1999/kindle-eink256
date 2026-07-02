.class public Lcom/amazon/kcp/application/models/IAsyncModel$State;
.super Ljava/lang/Object;
.source "IAsyncModel.java"


# static fields
.field public static final ERROR:Lcom/amazon/kcp/application/models/IAsyncModel$State;

.field public static final LOADED:Lcom/amazon/kcp/application/models/IAsyncModel$State;

.field public static final LOADING:Lcom/amazon/kcp/application/models/IAsyncModel$State;

.field public static final NONE:Lcom/amazon/kcp/application/models/IAsyncModel$State;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/IAsyncModel$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;->NONE:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    .line 31
    new-instance v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/IAsyncModel$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    .line 36
    new-instance v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/IAsyncModel$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    .line 41
    new-instance v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/IAsyncModel$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/application/models/IAsyncModel$State;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/application/models/IAsyncModel$State;->name:Ljava/lang/String;

    return-object v0
.end method
