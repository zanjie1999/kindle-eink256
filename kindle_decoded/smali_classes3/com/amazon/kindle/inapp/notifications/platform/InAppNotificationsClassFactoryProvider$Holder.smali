.class final Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Holder;
.super Ljava/lang/Object;
.source "InAppNotificationsClassFactoryProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Holder;

.field private static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Holder;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Holder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Holder;

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;

    return-object v0
.end method
