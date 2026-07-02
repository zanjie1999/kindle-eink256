.class final Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Holder;
.super Ljava/lang/Object;
.source "BellCountHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Holder;

.field private static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Holder;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Holder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Holder;

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    return-object v0
.end method
