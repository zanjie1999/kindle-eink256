.class public Lcom/amazon/versioning/UpdateDebugMenu;
.super Ljava/lang/Object;
.source "UpdateDebugMenu.java"

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
.field private static final DEBUG_MENU_TITLE:Ljava/lang/String; = "Update Plugin DebugUtils Menu"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/versioning/UpdateDebugMenu;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
    .locals 1

    .line 28
    new-instance v0, Lcom/amazon/versioning/UpdateDebugMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/versioning/UpdateDebugMenu$1;-><init>(Lcom/amazon/versioning/UpdateDebugMenu;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/versioning/UpdateDebugMenu;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    move-result-object p1

    return-object p1
.end method
