.class public Lcom/amazon/kindle/krx/events/PFMCORChangedEvent;
.super Ljava/lang/Object;
.source "PFMCORChangedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IApplicationEvent;


# instance fields
.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/PFMCORChangedEvent;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUser()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/PFMCORChangedEvent;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
