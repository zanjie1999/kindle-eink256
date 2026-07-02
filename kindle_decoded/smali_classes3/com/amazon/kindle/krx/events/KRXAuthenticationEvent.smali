.class public Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;
.super Ljava/lang/Object;
.source "KRXAuthenticationEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IApplicationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;
    }
.end annotation


# instance fields
.field type:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->type:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    .line 37
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->type:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
