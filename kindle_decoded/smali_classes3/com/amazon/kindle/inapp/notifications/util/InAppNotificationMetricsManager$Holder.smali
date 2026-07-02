.class final Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Holder;
.super Ljava/lang/Object;
.source "InAppNotificationMetricsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Holder;

.field private static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 296
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Holder;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Holder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Holder;

    .line 297
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;
    .locals 1

    .line 297
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    return-object v0
.end method
