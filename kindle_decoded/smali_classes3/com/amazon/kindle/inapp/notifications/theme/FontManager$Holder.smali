.class final Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Holder;
.super Ljava/lang/Object;
.source "FontManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/theme/FontManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Holder;

.field private static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/FontManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Holder;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Holder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Holder;

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/FontManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/amazon/kindle/inapp/notifications/theme/FontManager;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/FontManager;

    return-object v0
.end method
