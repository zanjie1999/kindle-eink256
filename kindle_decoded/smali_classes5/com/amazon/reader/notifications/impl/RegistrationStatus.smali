.class public Lcom/amazon/reader/notifications/impl/RegistrationStatus;
.super Ljava/lang/Object;
.source "RegistrationStatus.java"


# instance fields
.field private final endpointArn:Ljava/lang/String;

.field private final registrationAttempted:Z

.field private final registrationSuccess:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->endpointArn:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->registrationAttempted:Z

    .line 25
    iput-boolean p3, p0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->registrationSuccess:Z

    return-void
.end method

.method public static failed(Ljava/lang/String;)Lcom/amazon/reader/notifications/impl/RegistrationStatus;
    .locals 3

    .line 37
    new-instance v0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/reader/notifications/impl/RegistrationStatus;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static registered(Ljava/lang/String;)Lcom/amazon/reader/notifications/impl/RegistrationStatus;
    .locals 2

    .line 33
    new-instance v0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/amazon/reader/notifications/impl/RegistrationStatus;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static skipped(Ljava/lang/String;)Lcom/amazon/reader/notifications/impl/RegistrationStatus;
    .locals 2

    .line 29
    new-instance v0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/amazon/reader/notifications/impl/RegistrationStatus;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method


# virtual methods
.method public getEndpointArn()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->endpointArn:Ljava/lang/String;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->endpointArn:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public wasAttempted()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->registrationAttempted:Z

    return v0
.end method

.method public wasSuccessfull()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->registrationSuccess:Z

    return v0
.end method
