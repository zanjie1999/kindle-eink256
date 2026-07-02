.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;
.super Ljava/lang/Object;
.source "RemoteConfigurationImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;


# instance fields
.field private final mAppConfigurationId:Ljava/lang/String;

.field private final mConfiguration:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

.field private final mEntityTag:Ljava/lang/String;

.field private final mOrigin:I

.field private final mUpdate:Z


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid configuration origin."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mConfiguration:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    .line 63
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mAppConfigurationId:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mOrigin:I

    .line 65
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mEntityTag:Ljava/lang/String;

    .line 66
    iput-boolean p5, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mUpdate:Z

    return-void

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The Application Configuration ID may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAppConfigurationId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mAppConfigurationId:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mConfiguration:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    return-object v0
.end method

.method public getEntityTag()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mEntityTag:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mOrigin:I

    return v0
.end method

.method public isUpdate()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;->mUpdate:Z

    return v0
.end method
