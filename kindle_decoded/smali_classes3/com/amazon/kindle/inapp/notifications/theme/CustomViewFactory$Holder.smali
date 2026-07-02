.class final Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Holder;
.super Ljava/lang/Object;
.source "CustomViewFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Holder;

.field private static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Holder;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Holder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Holder;

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;

    return-object v0
.end method
