.class final Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$3;
.super Ljava/lang/Object;
.source "FalkorNetworkDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$3;

    invoke-direct {v0}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$3;-><init>()V

    sput-object v0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$3;->INSTANCE:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 42
    sget-object p1, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->togglePageNotFoundErrorDebugButton()V

    return-void
.end method
