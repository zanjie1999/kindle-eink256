.class public Lcom/amazon/xray/model/object/Entity$LabelComparator;
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
    name = "LabelComparator"
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

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/xray/model/object/Entity;->getLocalizedStringComparator(Lcom/amazon/kindle/krx/content/IBook;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/model/object/Entity$LabelComparator;->localizedComparator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/model/object/Entity;)I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/xray/model/object/Entity$LabelComparator;->localizedComparator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/amazon/xray/model/object/Entity;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/amazon/xray/model/object/Entity;->label:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 102
    check-cast p1, Lcom/amazon/xray/model/object/Entity;

    check-cast p2, Lcom/amazon/xray/model/object/Entity;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/xray/model/object/Entity$LabelComparator;->compare(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/model/object/Entity;)I

    move-result p1

    return p1
.end method
