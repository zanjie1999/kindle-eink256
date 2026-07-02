.class Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;
.super Ljava/lang/Object;
.source "SPHItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tm"
.end annotation


# instance fields
.field public day:I

.field public dayOfWeek:I

.field public hour:I

.field public minute:I

.field public month:I

.field public second:I

.field public year:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem$Tm;-><init>()V

    return-void
.end method
