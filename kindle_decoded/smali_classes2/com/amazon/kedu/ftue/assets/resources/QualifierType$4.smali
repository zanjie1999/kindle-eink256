.class final Lcom/amazon/kedu/ftue/assets/resources/QualifierType$4;
.super Ljava/lang/Object;
.source "QualifierType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->getSortedQualifiers()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kedu/ftue/assets/resources/QualifierType;Lcom/amazon/kedu/ftue/assets/resources/QualifierType;)I
    .locals 2

    .line 178
    invoke-static {p1}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->access$000(Lcom/amazon/kedu/ftue/assets/resources/QualifierType;)I

    move-result v0

    invoke-static {p2}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->access$000(Lcom/amazon/kedu/ftue/assets/resources/QualifierType;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->access$000(Lcom/amazon/kedu/ftue/assets/resources/QualifierType;)I

    move-result p1

    invoke-static {p2}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->access$000(Lcom/amazon/kedu/ftue/assets/resources/QualifierType;)I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 174
    check-cast p1, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    check-cast p2, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$4;->compare(Lcom/amazon/kedu/ftue/assets/resources/QualifierType;Lcom/amazon/kedu/ftue/assets/resources/QualifierType;)I

    move-result p1

    return p1
.end method
