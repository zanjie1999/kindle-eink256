.class public final Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$2;
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
        "Lcom/amazon/krf/platform/Marginal;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 MarginalGroupImplementations.kt\ncom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup\n*L\n1#1,70:1\n200#2:71\n*E\n"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$2;->$initialValue:Ljava/lang/Object;

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
            "Lcom/amazon/krf/platform/Marginal;",
            "Lcom/amazon/krf/platform/Marginal;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Lcom/amazon/krf/platform/Marginal;

    check-cast p2, Lcom/amazon/krf/platform/Marginal;

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2}, Lcom/amazon/krf/platform/Marginal;->dispose()V

    :cond_0
    return-void
.end method
