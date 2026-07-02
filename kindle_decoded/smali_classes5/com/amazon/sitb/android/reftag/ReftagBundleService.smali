.class public Lcom/amazon/sitb/android/reftag/ReftagBundleService;
.super Ljava/lang/Object;
.source "ReftagBundleService.java"


# instance fields
.field private final sampleReftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

.field private final seriesReftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/reftag/ReftagBundle;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/sitb/android/reftag/ReftagBundleService;->sampleReftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    .line 22
    iput-object p2, p0, Lcom/amazon/sitb/android/reftag/ReftagBundleService;->seriesReftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    return-void
.end method


# virtual methods
.method public getBundle(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/sitb/android/reftag/ReftagBundle;
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/amazon/sitb/android/reftag/ReftagBundleService;->sampleReftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    return-object p1

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/amazon/sitb/android/reftag/ReftagBundleService;->seriesReftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    return-object p1
.end method
