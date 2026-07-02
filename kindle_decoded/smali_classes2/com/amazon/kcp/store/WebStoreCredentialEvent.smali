.class public Lcom/amazon/kcp/store/WebStoreCredentialEvent;
.super Ljava/lang/Object;
.source "WebStoreCredentialEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;
    }
.end annotation


# instance fields
.field private type:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/store/WebStoreCredentialEvent;->type:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/store/WebStoreCredentialEvent;->type:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
