.class public final Lcom/audible/playersdk/notification/PlayerNotificationProvider;
.super Ljava/lang/Object;
.source "PlayerNotificationProvider.kt"

# interfaces
.implements Lcom/audible/playersdk/notification/PlayerNotificationFactory;


# static fields
.field public static final INSTANCE:Lcom/audible/playersdk/notification/PlayerNotificationProvider;

.field private static playerNotificationFactory:Lcom/audible/playersdk/notification/PlayerNotificationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/audible/playersdk/notification/PlayerNotificationProvider;

    invoke-direct {v0}, Lcom/audible/playersdk/notification/PlayerNotificationProvider;-><init>()V

    sput-object v0, Lcom/audible/playersdk/notification/PlayerNotificationProvider;->INSTANCE:Lcom/audible/playersdk/notification/PlayerNotificationProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/app/Notification;
    .locals 1

    .line 23
    sget-object v0, Lcom/audible/playersdk/notification/PlayerNotificationProvider;->playerNotificationFactory:Lcom/audible/playersdk/notification/PlayerNotificationFactory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/audible/playersdk/notification/PlayerNotificationFactory;->get()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 21
    sget-object v0, Lcom/audible/playersdk/notification/PlayerNotificationProvider;->playerNotificationFactory:Lcom/audible/playersdk/notification/PlayerNotificationFactory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/audible/playersdk/notification/PlayerNotificationFactory;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
