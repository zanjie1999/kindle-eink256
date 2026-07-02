.class public Lcom/amazon/xray/model/object/Entity$CountComparator;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/object/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/xray/model/object/Entity;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected localizedComparator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/xray/model/object/Entity;->getLocalizedStringComparator(Lcom/amazon/kindle/krx/content/IBook;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/model/object/Entity$CountComparator;->localizedComparator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/model/object/Entity;)I
    .locals 2

    .line 133
    invoke-static {p1}, Lcom/amazon/xray/model/object/Entity;->access$000(Lcom/amazon/xray/model/object/Entity;)I

    move-result v0

    invoke-static {p2}, Lcom/amazon/xray/model/object/Entity;->access$000(Lcom/amazon/xray/model/object/Entity;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/amazon/xray/model/object/Entity;->access$000(Lcom/amazon/xray/model/object/Entity;)I

    move-result v0

    invoke-static {p2}, Lcom/amazon/xray/model/object/Entity;->access$000(Lcom/amazon/xray/model/object/Entity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/xray/model/object/Entity$CountComparator;->localizedComparator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/amazon/xray/model/object/Entity;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/amazon/xray/model/object/Entity;->label:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 121
    check-cast p1, Lcom/amazon/xray/model/object/Entity;

    check-cast p2, Lcom/amazon/xray/model/object/Entity;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/xray/model/object/Entity$CountComparator;->compare(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/model/object/Entity;)I

    move-result p1

    return p1
.end method
