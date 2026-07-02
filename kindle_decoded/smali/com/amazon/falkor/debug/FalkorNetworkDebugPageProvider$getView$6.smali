.class final Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$6;
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
.field public static final INSTANCE:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$6;

    invoke-direct {v0}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$6;-><init>()V

    sput-object v0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$6;->INSTANCE:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$6;

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

    .line 60
    sget-object p1, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->toggleSMDErrorDebugButton()V

    return-void
.end method
