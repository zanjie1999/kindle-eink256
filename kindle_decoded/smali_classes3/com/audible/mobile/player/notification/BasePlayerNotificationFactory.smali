.class public abstract Lcom/audible/mobile/player/notification/BasePlayerNotificationFactory;
.super Ljava/lang/Object;
.source "BasePlayerNotificationFactory.java"

# interfaces
.implements Lcom/audible/mobile/player/notification/PlayerNotificationFactory;


# instance fields
.field private final id:I

.field private playerManager:Lcom/audible/mobile/player/PlayerManager;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    .line 19
    iput v0, p0, Lcom/audible/mobile/player/notification/BasePlayerNotificationFactory;->id:I

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/audible/mobile/player/notification/BasePlayerNotificationFactory;->id:I

    return v0
.end method
