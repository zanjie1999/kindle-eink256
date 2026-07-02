.class final Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessInvestingFilter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchFilterMenuProviderImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessInvestingFilter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessInvestingFilter$2;

    invoke-direct {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessInvestingFilter$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessInvestingFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessInvestingFilter$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 4

    .line 165
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 167
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->business_investing_filter_text:I

    const-string v2, "BusinessInvesting"

    const/4 v3, -0x1

    .line 165
    invoke-direct {v0, v2, v1, v1, v3}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessInvestingFilter$2;->invoke()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object v0

    return-object v0
.end method
