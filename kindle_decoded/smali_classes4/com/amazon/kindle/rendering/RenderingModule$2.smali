.class Lcom/amazon/kindle/rendering/RenderingModule$2;
.super Ljava/lang/Object;
.source "RenderingModule.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/RenderingModule;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/RenderingModule;Landroid/content/Context;)V
    .locals 0

    .line 94
    iput-object p2, p0, Lcom/amazon/kindle/rendering/RenderingModule$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
    .locals 0

    .line 97
    new-instance p1, Lcom/amazon/kindle/rendering/RenderingModule$2$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/rendering/RenderingModule$2$1;-><init>(Lcom/amazon/kindle/rendering/RenderingModule$2;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/RenderingModule$2;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    move-result-object p1

    return-object p1
.end method
