.class public Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;
.super Ljava/lang/Object;
.source "SendToKindleDebugMenu.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# static fields
.field private static final STK_DEBUG_MENU_TITLE:Ljava/lang/String; = "Send To Kindle"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1;-><init>(Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    move-result-object p1

    return-object p1
.end method
