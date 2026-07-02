.class final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper$widgetProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryResumeWidgetProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper$widgetProvider$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper$widgetProvider$2;

    invoke-direct {v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper$widgetProvider$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper$widgetProvider$2;->INSTANCE:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper$widgetProvider$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;
    .locals 1

    .line 65
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper$widgetProvider$2;->invoke()Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    move-result-object v0

    return-object v0
.end method
