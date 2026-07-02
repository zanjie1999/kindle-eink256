.class public final Lcom/amazon/kindle/setting/layout/KindleLayoutDefaultRule;
.super Ljava/lang/Object;
.source "KindleLayoutDefaultRule.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/layout/LayoutDefaultRule;


# instance fields
.field private final commonLayoutDefaultRuleHelper:Lcom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper;

    invoke-direct {v0}, Lcom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/setting/layout/KindleLayoutDefaultRule;->commonLayoutDefaultRuleHelper:Lcom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper;

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/kindle/setting/layout/LayoutConfiguration;Lcom/amazon/kindle/setting/item/ItemsRepository;)V
    .locals 1

    const-string v0, "layoutConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/KindleLayoutDefaultRule;->commonLayoutDefaultRuleHelper:Lcom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper;->apply(Lcom/amazon/kindle/setting/layout/LayoutConfiguration;Lcom/amazon/kindle/setting/item/ItemsRepository;)V

    return-void
.end method
