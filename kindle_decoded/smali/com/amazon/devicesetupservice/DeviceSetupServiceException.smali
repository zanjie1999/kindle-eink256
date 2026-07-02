.class public Lcom/amazon/devicesetupservice/DeviceSetupServiceException;
.super Lcom/amazon/CoralAndroidClient/Exception/CoralException;
.source "DeviceSetupServiceException.java"


# static fields
.field private static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/CoralAndroidClient/Exception/CoralException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/CoralAndroidClient/Exception/CoralException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/CoralAndroidClient/Exception/CoralException;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/CoralAndroidClient/Exception/CoralException;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
