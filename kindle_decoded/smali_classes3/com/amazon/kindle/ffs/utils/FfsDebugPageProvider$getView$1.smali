.class final Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider$getView$1;
.super Ljava/lang/Object;
.source "FfsDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider$getView$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider$getView$1;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider$getView$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider$getView$1;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider$getView$1;

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

    .line 25
    sget-object p1, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->setUsgMockingEnabled(Z)V

    return-void
.end method
