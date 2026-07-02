.class public Lcom/amazon/kcp/debug/DebugActivity$RegisterEvent;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterEvent"
.end annotation


# instance fields
.field final registeredButton:Lcom/amazon/kcp/debug/DebugActivity$DebugButton;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/debug/DebugActivity$DebugButton;)V
    .locals 0

    .line 2948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2949
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$RegisterEvent;->registeredButton:Lcom/amazon/kcp/debug/DebugActivity$DebugButton;

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
