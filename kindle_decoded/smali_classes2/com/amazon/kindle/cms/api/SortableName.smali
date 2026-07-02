.class public final Lcom/amazon/kindle/cms/api/SortableName;
.super Ljava/lang/Object;
.source "SortableName.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kindle/cms/api/SortableName;",
        ">;"
    }
.end annotation


# instance fields
.field private m_collationKey:Ljava/lang/Comparable;

.field private final m_displayValue:Ljava/lang/String;

.field private final m_languageTag:Ljava/lang/String;

.field private final m_sortValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 88
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_displayValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    invoke-static {p3, v0}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;->validateLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 90
    invoke-static {p1, p2}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;->guessLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_languageTag:Ljava/lang/String;

    .line 91
    invoke-static {p2}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_displayValue:Ljava/lang/String;

    iget-object p2, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_languageTag:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;->getSortValueFromDisplayValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_sortValue:Ljava/lang/String;

    return-void

    .line 86
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid display value "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/cms/api/SortableName;)I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_collationKey:Ljava/lang/Comparable;

    if-eqz v0, :cond_1

    .line 149
    iget-object p1, p1, Lcom/amazon/kindle/cms/api/SortableName;->m_collationKey:Ljava/lang/Comparable;

    if-eqz p1, :cond_0

    .line 151
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Collation key not initialized, localizer not set for the second SortableName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Collation key not initialized, localizer not set for the first SortableName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/amazon/kindle/cms/api/SortableName;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/api/SortableName;->compareTo(Lcom/amazon/kindle/cms/api/SortableName;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 159
    instance-of v2, p1, Lcom/amazon/kindle/cms/api/SortableName;

    if-nez v2, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    check-cast p1, Lcom/amazon/kindle/cms/api/SortableName;

    .line 163
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_displayValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/cms/api/SortableName;->m_displayValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_sortValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/cms/api/SortableName;->m_sortValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_languageTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/cms/api/SortableName;->m_languageTag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_displayValue:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSortValue()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_sortValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_displayValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 216
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_collationKey:Ljava/lang/Comparable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_languageTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SortableName;->m_displayValue:Ljava/lang/String;

    return-object v0
.end method
