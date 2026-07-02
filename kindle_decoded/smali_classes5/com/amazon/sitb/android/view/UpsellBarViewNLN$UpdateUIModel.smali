.class public Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;
.super Ljava/lang/Object;
.source "UpsellBarViewNLN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/sitb/android/view/UpsellBarViewNLN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateUIModel"
.end annotation


# instance fields
.field public failureCode:Ljava/lang/String;

.field public percentComplete:I

.field public price:Lcom/amazon/sitb/android/BookPrice;

.field final synthetic this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

.field public upsellTitle:Ljava/lang/String;

.field public wasPurchasedThisReadingSession:Z


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;ILcom/amazon/sitb/android/BookPrice;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iput p2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->percentComplete:I

    .line 836
    iput-object p3, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->price:Lcom/amazon/sitb/android/BookPrice;

    .line 837
    iput-object p4, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->upsellTitle:Ljava/lang/String;

    .line 838
    iput-object p5, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->failureCode:Ljava/lang/String;

    .line 839
    iput-boolean p6, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->wasPurchasedThisReadingSession:Z

    return-void
.end method
