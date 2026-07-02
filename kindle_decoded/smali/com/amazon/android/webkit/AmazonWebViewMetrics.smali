.class public Lcom/amazon/android/webkit/AmazonWebViewMetrics;
.super Ljava/lang/Object;
.source "AmazonWebViewMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;
    }
.end annotation


# instance fields
.field private final counts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private final levels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final times:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics;->counts:Ljava/util/Map;

    .line 54
    iput-object p2, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics;->properties:Ljava/util/Map;

    .line 55
    iput-object p3, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics;->times:Ljava/util/Map;

    .line 56
    iput-object p4, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics;->levels:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics;->counts:Ljava/util/Map;

    return-object v0
.end method

.method public getLevels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics;->levels:Ljava/util/Map;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getTimes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics;->times:Ljava/util/Map;

    return-object v0
.end method
