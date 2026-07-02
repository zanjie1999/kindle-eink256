.class public Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;
.super Ljava/lang/Object;
.source "PrepareBuyResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreparedBook"
.end annotation


# instance fields
.field public final borrowable:Z

.field public final buyable:Z

.field public final currencyCode:Ljava/lang/String;

.field public final formattedPrice:Ljava/lang/String;

.field public final isKUBook:Z

.field public final priceAmount:Ljava/math/BigDecimal;


# direct methods
.method private constructor <init>(ZZZLjava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-boolean p1, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->buyable:Z

    .line 210
    iput-boolean p2, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->borrowable:Z

    .line 211
    iput-boolean p3, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->isKUBook:Z

    .line 212
    iput-object p4, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->priceAmount:Ljava/math/BigDecimal;

    .line 213
    iput-object p5, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->currencyCode:Ljava/lang/String;

    .line 214
    iput-object p6, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->formattedPrice:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZZZLjava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$1;)V
    .locals 0

    .line 172
    invoke-direct/range {p0 .. p6}, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;-><init>(ZZZLjava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
