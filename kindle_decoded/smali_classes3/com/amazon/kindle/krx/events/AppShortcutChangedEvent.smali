.class public Lcom/amazon/kindle/krx/events/AppShortcutChangedEvent;
.super Ljava/lang/Object;
.source "AppShortcutChangedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final shortcutId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/AppShortcutChangedEvent;->shortcutId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/AppShortcutChangedEvent;->shortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
