.class public final Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;
.super Lkotlin/properties/ObservableProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ObservableProperty<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 MarginalGroupImplementations.kt\ncom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup\n*L\n1#1,70:1\n207#2,8:71\n*E\n"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;->$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;->this$0:Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;

    .line 33
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;->this$0:Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;

    invoke-static {p1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->access$getCenterSettings$p(Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupImplementationsKt;->getZERO_VALUE()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;->this$0:Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;

    invoke-static {p1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->access$getCenterSettings$p(Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupImplementationsKt;->getZERO_VALUE()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;->this$0:Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;

    invoke-static {p1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->access$getCenterSettings$p(Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;->this$0:Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;

    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getLeftMarginValue()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 76
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;->this$0:Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;

    invoke-static {p1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->access$getCenterSettings$p(Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;->this$0:Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;

    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getRightMarginValue()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :goto_0
    return-void
.end method
