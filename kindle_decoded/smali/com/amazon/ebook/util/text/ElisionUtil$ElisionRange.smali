.class public Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/ElisionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElisionRange"
.end annotation


# instance fields
.field private final length:I

.field private final srcWord:Ljava/lang/String;

.field private final start:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;->start:I

    iput p2, p0, Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;->length:I

    iput-object p3, p0, Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;->srcWord:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lcom/amazon/ebook/util/text/ElisionUtil$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;->length:I

    return v0
.end method
