.class public Lcom/audible/sdk/AudibleSDKException;
.super Ljava/lang/Exception;
.source "AudibleSDKException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final code:Lcom/audible/sdk/AudibleSDKErrorCode;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/audible/sdk/AudibleSDKErrorCode;->getInstance(I)Lcom/audible/sdk/AudibleSDKErrorCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDKException;-><init>(Lcom/audible/sdk/AudibleSDKErrorCode;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/sdk/AudibleSDKErrorCode;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/audible/sdk/AudibleSDKException;->code:Lcom/audible/sdk/AudibleSDKErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/audible/sdk/AudibleSDKErrorCode;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/audible/sdk/AudibleSDKException;->code:Lcom/audible/sdk/AudibleSDKErrorCode;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/audible/sdk/AudibleSDKErrorCode;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/audible/sdk/AudibleSDKException;->code:Lcom/audible/sdk/AudibleSDKErrorCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudibleSDKException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/sdk/AudibleSDKException;->code:Lcom/audible/sdk/AudibleSDKErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
