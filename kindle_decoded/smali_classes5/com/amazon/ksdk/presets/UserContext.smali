.class public final Lcom/amazon/ksdk/presets/UserContext;
.super Ljava/lang/Object;
.source "UserContext.java"


# instance fields
.field final mDirectId:Ljava/lang/String;

.field final mUserType:Lcom/amazon/ksdk/presets/UserType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/ksdk/presets/UserType;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/ksdk/presets/UserContext;->mDirectId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/amazon/ksdk/presets/UserContext;->mUserType:Lcom/amazon/ksdk/presets/UserType;

    return-void
.end method


# virtual methods
.method public getDirectId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/ksdk/presets/UserContext;->mDirectId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Lcom/amazon/ksdk/presets/UserType;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/ksdk/presets/UserContext;->mUserType:Lcom/amazon/ksdk/presets/UserType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserContext{mDirectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/UserContext;->mDirectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mUserType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/UserContext;->mUserType:Lcom/amazon/ksdk/presets/UserType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
