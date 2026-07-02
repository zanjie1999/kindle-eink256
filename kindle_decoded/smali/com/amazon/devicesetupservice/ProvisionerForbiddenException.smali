.class public Lcom/amazon/devicesetupservice/ProvisionerForbiddenException;
.super Lcom/amazon/CoralAndroidClient/Exception/CoralException;
.source "ProvisionerForbiddenException.java"


# static fields
.field private static final serialVersionUID:J = -0x1L


# instance fields
.field private forbiddenCause:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/CoralAndroidClient/Exception/CoralException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/CoralAndroidClient/Exception/CoralException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/CoralAndroidClient/Exception/CoralException;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/CoralAndroidClient/Exception/CoralException;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getForbiddenCause()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/devicesetupservice/ProvisionerForbiddenException;->forbiddenCause:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setForbiddenCause(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/devicesetupservice/ProvisionerForbiddenException;->forbiddenCause:Ljava/lang/String;

    return-void
.end method
