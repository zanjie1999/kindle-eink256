.class public Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field private maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "GN"

    const-string v1, "KN"

    const-string v2, "PN"

    const-string v3, "WR"

    const-string v4, "PS"

    .line 47
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    const-string v1, "L"

    const-string v2, "R"

    const-string v3, "N"

    const-string v4, "M"

    const-string v5, "B"

    const-string v6, "H"

    const-string v7, "F"

    const-string v8, "V"

    const-string v9, "W"

    const-string v10, " "

    .line 49
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    const-string v1, "ES"

    const-string v2, "EP"

    const-string v3, "EB"

    const-string v4, "EL"

    const-string v5, "EY"

    const-string v6, "IB"

    const-string v7, "IL"

    const-string v8, "IN"

    const-string v9, "IE"

    const-string v10, "EI"

    const-string v11, "ER"

    .line 51
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    const-string v1, "L"

    const-string v2, "T"

    const-string v3, "K"

    const-string v4, "S"

    const-string v5, "N"

    const-string v6, "M"

    const-string v7, "B"

    const-string v8, "Z"

    .line 53
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 59
    iput v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 891
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 895
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 6

    const-string v0, "CHIA"

    .line 781
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, p2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-gt p2, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, p2, -0x2

    .line 785
    invoke-virtual {p0, p1, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x3

    const-string v5, "ACH"

    .line 787
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 p2, p2, 0x2

    .line 790
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p2

    const/16 v3, 0x49

    if-eq p2, v3, :cond_4

    const/16 v3, 0x45

    if-ne p2, v3, :cond_6

    :cond_4
    const/4 p2, 0x6

    const-string v3, "BACHER"

    const-string v4, "MACHER"

    .line 791
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, p2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_0
    return v1
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p2, v1

    const-string v2, "HARAC"

    const-string v3, "HARIS"

    .line 802
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    const-string v4, "HOR"

    const-string v5, "HYM"

    const-string v6, "HIA"

    const-string v7, "HEM"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    const-string p2, "CHORE"

    .line 805
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v3, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 8

    const-string v0, "VAN "

    const-string v1, "VON "

    .line 816
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, v2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v3, "SCH"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v0, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, -0x2

    const/4 v3, 0x6

    const-string v4, "ORCHES"

    const-string v5, "ARCHIT"

    const-string v6, "ORCHID"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v3, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x2

    const-string v3, "T"

    const-string v4, "S"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, p2, -0x1

    const-string v4, "A"

    const-string v5, "O"

    const-string v6, "U"

    const-string v7, "E"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    sget-object v3, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/2addr p2, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne p2, p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 7

    .line 827
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    const-string v1, "ALLE"

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p2, v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    const-string v4, "ILLO"

    const-string v5, "ILLA"

    filled-new-array {v4, v5, v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 830
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    const-string v5, "AS"

    const-string v6, "OS"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v0, v4, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    const-string v4, "A"

    const-string v5, "O"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v3, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sub-int/2addr p2, v3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 5

    add-int/lit8 v0, p2, 0x1

    .line 843
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, p2, -0x1

    const/4 v3, 0x3

    const-string v4, "UMB"

    .line 846
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v3, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    add-int/2addr p2, v0

    const-string v1, "ER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method protected static varargs contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    add-int/2addr p2, p1

    .line 917
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p2, v1, :cond_1

    .line 918
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 920
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v1, p3, p2

    .line 921
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private handleAEIOUY(Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1

    if-nez p2, :cond_0

    const/16 v0, 0x41

    .line 270
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private handleC(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 11

    .line 279
    invoke-direct {p0, p1, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v0

    const/16 v1, 0x4b

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/2addr p3, v2

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x53

    if-nez p3, :cond_1

    const/4 v3, 0x6

    const-string v4, "CAESAR"

    .line 282
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p3, v3, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    :cond_1
    const-string v3, "CH"

    .line 285
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p3, v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto/16 :goto_2

    :cond_2
    const-string v3, "CZ"

    .line 287
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p3, v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x58

    if-eqz v3, :cond_3

    add-int/lit8 v3, p3, -0x2

    const/4 v5, 0x4

    const-string v6, "WICZ"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v3, v5, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 290
    invoke-virtual {p2, v0, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    :cond_3
    add-int/lit8 v3, p3, 0x1

    const-string v5, "CIA"

    .line 292
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {p1, v3, v7, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 294
    invoke-virtual {p2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_1
    add-int/2addr p3, v7

    goto/16 :goto_2

    :cond_4
    const-string v6, "CC"

    .line 296
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p3, v2, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_6

    if-ne p3, v8, :cond_5

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v6

    const/16 v9, 0x4d

    if-eq v6, v9, :cond_6

    .line 299
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p1

    return p1

    :cond_6
    const-string v6, "CK"

    const-string v9, "CG"

    const-string v10, "CQ"

    .line 300
    filled-new-array {v6, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p3, v2, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 301
    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0

    :cond_7
    const-string v6, "CE"

    const-string v9, "CI"

    const-string v10, "CY"

    .line 303
    filled-new-array {v9, v6, v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, p3, v2, v10}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v1, "CIO"

    const-string v3, "CIE"

    .line 305
    filled-new-array {v1, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, v7, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 306
    invoke-virtual {p2, v0, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto/16 :goto_0

    .line 308
    :cond_8
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0

    .line 312
    :cond_9
    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    const-string p2, " C"

    const-string v0, " Q"

    const-string v1, " G"

    .line 313
    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, v2, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    :cond_a
    const-string p2, "C"

    const-string v0, "K"

    const-string v1, "Q"

    .line 316
    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, v8, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, v2, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    move p3, v3

    :goto_2
    return p3
.end method

.method private handleCC(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4

    add-int/lit8 v0, p3, 0x2

    const-string v1, "I"

    const-string v2, "E"

    const-string v3, "H"

    .line 331
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HU"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-ne p3, v2, :cond_0

    add-int/lit8 v0, p3, -0x1

    .line 334
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    const-string v2, "UCCEE"

    const-string v3, "UCCES"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "KS"

    .line 337
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x58

    .line 340
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/lit8 v0, p3, 0x3

    goto :goto_1

    :cond_3
    const/16 p1, 0x4b

    .line 344
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_1
    return v0
.end method

.method private handleCH(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5

    const/16 v0, 0x58

    const/4 v1, 0x2

    const/16 v2, 0x4b

    if-lez p3, :cond_0

    const/4 v3, 0x4

    const-string v4, "CHAE"

    .line 355
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p3, v3, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    invoke-virtual {p2, v2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    :goto_0
    add-int/2addr p3, v1

    return p3

    .line 358
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    :cond_2
    if-lez p3, :cond_4

    const/4 v3, 0x0

    const-string v4, "MC"

    .line 368
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 369
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 371
    :cond_3
    invoke-virtual {p2, v0, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 374
    :cond_4
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_1
    add-int/2addr p3, v1

    return p3
.end method

.method private handleD(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5

    const-string v0, "DG"

    .line 384
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, p3, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x2

    const-string v1, "I"

    const-string v3, "E"

    const-string v4, "Y"

    .line 386
    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x4a

    .line 387
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    :cond_0
    const-string p1, "TK"

    .line 391
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "DT"

    const-string v3, "DD"

    .line 394
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x54

    if-eqz p1, :cond_2

    .line 395
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v0, p3, 0x1

    :goto_0
    return v0
.end method

.method private handleG(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    add-int/lit8 v4, v3, 0x1

    .line 409
    invoke-virtual {v0, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v5

    const/16 v6, 0x48

    if-ne v5, v6, :cond_0

    .line 410
    invoke-direct/range {p0 .. p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v4

    goto/16 :goto_4

    .line 411
    :cond_0
    invoke-virtual {v0, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v5

    const/16 v6, 0x4e

    const/16 v7, 0x59

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v5, v6, :cond_3

    const-string v5, "N"

    const-string v6, "KN"

    if-ne v3, v9, :cond_1

    .line 412
    invoke-virtual {v0, v1, v8}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v8

    invoke-direct {v0, v8}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez p4, :cond_1

    .line 413
    invoke-virtual {v2, v6, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v3, 0x2

    const-string v9, "EY"

    .line 414
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v8, v10, v9}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v7, :cond_2

    if-nez p4, :cond_2

    .line 416
    invoke-virtual {v2, v5, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {v2, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "LI"

    .line 421
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v10, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p4, :cond_4

    const-string v1, "KL"

    const-string v4, "L"

    .line 422
    invoke-virtual {v2, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v4, v3, 0x2

    goto/16 :goto_4

    :cond_4
    const/16 v5, 0x4a

    const/16 v6, 0x4b

    if-nez v3, :cond_6

    .line 424
    invoke-virtual {v0, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v11

    if-eq v11, v7, :cond_5

    sget-object v11, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {v1, v4, v10, v11}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 428
    :cond_5
    invoke-virtual {v2, v6, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    :cond_6
    const-string v11, "ER"

    .line 430
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v4, v10, v11}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v11

    const-string v12, "I"

    const-string v13, "E"

    const/4 v14, 0x3

    if-nez v11, :cond_7

    invoke-virtual {v0, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v11

    if-ne v11, v7, :cond_8

    :cond_7
    const/4 v7, 0x6

    const-string v11, "DANGER"

    const-string v15, "RANGER"

    const-string v10, "MANGER"

    filled-new-array {v11, v15, v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v8, v7, v10}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    add-int/lit8 v7, v3, -0x1

    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v7, v9, v10}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "RGY"

    const-string v11, "OGY"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v7, v14, v10}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 436
    invoke-virtual {v2, v6, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    :goto_1
    const/4 v1, 0x2

    add-int/lit8 v4, v3, 0x2

    goto/16 :goto_4

    :cond_8
    const-string v7, "Y"

    .line 438
    filled-new-array {v13, v12, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v4, v9, v7}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x4

    if-nez v7, :cond_b

    add-int/lit8 v7, v3, -0x1

    const-string v10, "AGGI"

    const-string v11, "OGGI"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v7, v9, v10}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_2

    .line 452
    :cond_9
    invoke-virtual {v0, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v5, 0x47

    if-ne v1, v5, :cond_a

    const/4 v1, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 454
    invoke-virtual {v2, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4

    .line 457
    :cond_a
    invoke-virtual {v2, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4

    :cond_b
    :goto_2
    const-string v7, "VAN "

    const-string v10, "VON "

    .line 441
    filled-new-array {v7, v10}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v8, v9, v7}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "SCH"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v8, v14, v7}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "ET"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v1, v4, v8, v7}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_3

    :cond_c
    const-string v7, "IER"

    .line 446
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v4, v14, v7}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 447
    invoke-virtual {v2, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 449
    :cond_d
    invoke-virtual {v2, v5, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 445
    :cond_e
    :goto_3
    invoke-virtual {v2, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    :goto_4
    return v4
.end method

.method private handleGH(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 10

    const/16 v0, 0x4b

    const/4 v1, 0x2

    if-lez p3, :cond_1

    add-int/lit8 v2, p3, -0x1

    .line 466
    invoke-virtual {p0, p1, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :cond_0
    :goto_0
    add-int/2addr p3, v1

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x49

    if-nez p3, :cond_3

    add-int/2addr p3, v1

    .line 470
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-ne p1, v2, :cond_2

    const/16 p1, 0x4a

    .line 471
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_1

    .line 473
    :cond_2
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    :cond_3
    const-string v3, "D"

    const-string v4, "H"

    const-string v5, "B"

    const/4 v6, 0x1

    if-le p3, v6, :cond_4

    add-int/lit8 v7, p3, -0x2

    .line 476
    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v7, v6, v8}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_4
    if-le p3, v1, :cond_5

    add-int/lit8 v7, p3, -0x3

    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v7, v6, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    const/4 v3, 0x3

    if-le p3, v3, :cond_6

    add-int/lit8 v3, p3, -0x4

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v6, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    if-le p3, v1, :cond_7

    add-int/lit8 v3, p3, -0x1

    .line 482
    invoke-virtual {p0, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, p3, -0x3

    const-string v4, "C"

    const-string v5, "G"

    const-string v7, "L"

    const-string v8, "R"

    const-string v9, "T"

    filled-new-array {v4, v5, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v6, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 p1, 0x46

    .line 485
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    :cond_7
    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    .line 486
    invoke-virtual {p0, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-eq p1, v2, :cond_0

    .line 487
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0

    :goto_1
    return p3
.end method

.method private handleH(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1

    if-eqz p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    .line 499
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x48

    .line 501
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    :goto_0
    return p3
.end method

.method private handleJ(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 9

    const-string v0, "JOSE"

    .line 515
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, p3, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x20

    const-string v4, "SAN "

    const/4 v5, 0x0

    const/16 v6, 0x48

    const/16 v7, 0x4a

    const/4 v8, 0x1

    if-nez v1, :cond_6

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v5, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x41

    if-nez p3, :cond_1

    .line 525
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    invoke-virtual {p2, v7, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, -0x1

    .line 527
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p4, :cond_3

    add-int/lit8 p4, p3, 0x1

    invoke-virtual {p0, p1, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p0, p1, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p4

    const/16 v1, 0x4f

    if-ne p4, v1, :cond_3

    .line 529
    :cond_2
    invoke-virtual {p2, v7, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 530
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    sub-int/2addr p4, v8

    if-ne p3, p4, :cond_4

    .line 531
    invoke-virtual {p2, v7, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    :cond_4
    add-int/lit8 p4, p3, 0x1

    .line 532
    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, p4, v8, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "S"

    const-string v1, "K"

    const-string v2, "L"

    filled-new-array {p4, v1, v2}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, v0, v8, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 534
    invoke-virtual {p2, v7}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :cond_5
    :goto_0
    add-int/lit8 p2, p3, 0x1

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-ne p1, v7, :cond_a

    add-int/lit8 p2, p3, 0x2

    goto :goto_4

    :cond_6
    :goto_1
    if-nez p3, :cond_7

    add-int/lit8 p4, p3, 0x4

    .line 517
    invoke-virtual {p0, p1, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p4

    if-eq p4, v3, :cond_9

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eq p4, v2, :cond_9

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, v5, v2, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 521
    :cond_8
    invoke-virtual {p2, v7, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 519
    :cond_9
    :goto_2
    invoke-virtual {p2, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_3
    add-int/lit8 p2, p3, 0x1

    :cond_a
    :goto_4
    return p2
.end method

.method private handleL(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 550
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    .line 551
    invoke-direct {p0, p1, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/lit8 v0, p3, 0x2

    goto :goto_1

    .line 559
    :cond_1
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_1
    return v0
.end method

.method private handleP(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 568
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x48

    if-ne v1, v2, :cond_0

    const/16 p1, 0x46

    .line 569
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    .line 572
    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    const-string p2, "P"

    const-string v1, "B"

    .line 573
    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, p3, 0x2

    :cond_1
    move p3, v0

    :goto_0
    return p3
.end method

.method private handleR(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 4

    .line 583
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x52

    const/4 v2, 0x2

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    add-int/lit8 p4, p3, -0x2

    const-string v0, "IE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4, v2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, -0x4

    const-string v0, "ME"

    const-string v3, "MA"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4, v2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 586
    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/lit8 p2, p3, 0x1

    .line 590
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-ne p1, v1, :cond_1

    add-int/lit8 p2, p3, 0x2

    :cond_1
    return p2
.end method

.method private handleS(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 9

    add-int/lit8 v0, p3, -0x1

    const-string v1, "ISL"

    const-string v2, "YSL"

    .line 598
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    add-int/2addr p3, v1

    goto/16 :goto_5

    :cond_0
    const/16 v0, 0x58

    const/16 v3, 0x53

    if-nez p3, :cond_1

    const/4 v4, 0x5

    const-string v5, "SUGAR"

    .line 601
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p3, v4, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 603
    invoke-virtual {p2, v0, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    :cond_1
    const-string v4, "SH"

    .line 605
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p1, p3, v5, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_3

    add-int/lit8 p4, p3, 0x1

    const-string v1, "HEIM"

    const-string v2, "HOEK"

    const-string v4, "HOLM"

    const-string v7, "HOLZ"

    .line 606
    filled-new-array {v1, v2, v4, v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p4, v6, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 608
    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 610
    :cond_2
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_1
    add-int/2addr p3, v5

    goto/16 :goto_5

    :cond_3
    const-string v4, "SIO"

    const-string v7, "SIA"

    .line 613
    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p3, v2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "SIAN"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p3, v6, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string p4, "Z"

    if-nez p3, :cond_5

    add-int/lit8 v2, p3, 0x1

    const-string v4, "M"

    const-string v6, "N"

    const-string v7, "L"

    const-string v8, "W"

    .line 621
    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    add-int/lit8 v2, p3, 0x1

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 627
    :cond_6
    invoke-virtual {p2, v3, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    add-int/lit8 p2, p3, 0x1

    .line 628
    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, v1, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move p3, p2

    goto :goto_5

    :cond_8
    const-string v0, "SC"

    .line 629
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v5, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto :goto_5

    .line 632
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_a

    add-int/lit8 v0, p3, -0x2

    const-string v4, "AI"

    const-string v6, "OI"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v5, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 634
    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_2

    .line 636
    :cond_a
    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_2
    const-string p2, "S"

    .line 638
    filled-new-array {p2, p4}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, v1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_1

    :cond_b
    move p3, v2

    goto :goto_5

    :cond_c
    :goto_3
    if-eqz p4, :cond_d

    .line 616
    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4

    .line 618
    :cond_d
    invoke-virtual {p2, v3, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    :goto_4
    add-int/2addr p3, v2

    :goto_5
    return p3
.end method

.method private handleSC(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 11

    add-int/lit8 v0, p3, 0x2

    .line 647
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x53

    const-string v3, "SK"

    const/4 v4, 0x3

    const/16 v5, 0x48

    if-ne v1, v5, :cond_3

    add-int/lit8 v0, p3, 0x3

    const-string v5, "OO"

    const-string v6, "ER"

    const-string v7, "EN"

    const-string v8, "UY"

    const-string v9, "ED"

    const-string v10, "EM"

    .line 649
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {p1, v0, v5, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ER"

    const-string v2, "EN"

    .line 651
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v5, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "X"

    .line 653
    invoke-virtual {p2, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x58

    if-nez p3, :cond_2

    .line 658
    invoke-virtual {p0, p1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    const/16 v1, 0x57

    if-eq p1, v1, :cond_2

    .line 659
    invoke-virtual {p2, v0, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 661
    :cond_2
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    const-string v5, "I"

    const-string v6, "E"

    const-string v7, "Y"

    .line 664
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v0, v1, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 665
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 667
    :cond_4
    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    :goto_0
    add-int/2addr p3, v4

    return p3
.end method

.method private handleT(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6

    const-string v0, "TION"

    .line 676
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, p3, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x58

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/2addr p3, v3

    goto/16 :goto_3

    :cond_0
    const-string v0, "TIA"

    const-string v4, "TCH"

    .line 679
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v3, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    :cond_1
    const-string v0, "TH"

    .line 682
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, p3, v2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0x54

    if-nez v0, :cond_4

    const-string v0, "TTH"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v3, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 693
    :cond_2
    invoke-virtual {p2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 p2, p3, 0x1

    const-string v0, "T"

    const-string v1, "D"

    .line 694
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/2addr p3, v2

    goto :goto_3

    :cond_3
    move p3, p2

    goto :goto_3

    :cond_4
    :goto_1
    add-int/2addr p3, v2

    const-string v0, "OM"

    const-string v5, "AM"

    .line 683
    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "VAN "

    const-string v2, "VON "

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SCH"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v3, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 p1, 0x30

    .line 689
    invoke-virtual {p2, p1, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 687
    :cond_6
    :goto_2
    invoke-virtual {p2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_3
    return p3
.end method

.method private handleW(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7

    const-string v0, "WR"

    .line 703
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, p3, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x52

    .line 705
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/2addr p3, v1

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0x46

    if-nez p3, :cond_3

    add-int/lit8 v2, p3, 0x1

    .line 708
    invoke-virtual {p0, p1, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "WH"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p3, v1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 710
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result p1

    const/16 p3, 0x41

    if-eqz p1, :cond_2

    .line 712
    invoke-virtual {p2, p3, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 715
    :cond_2
    invoke-virtual {p2, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_1
    move p3, v2

    goto :goto_3

    .line 718
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_4

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x5

    const-string v3, "EWSKI"

    const-string v4, "EWSKY"

    const-string v5, "OWSKI"

    const-string v6, "OWSKY"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "SCH"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "WICZ"

    const-string v1, "WITZ"

    .line 724
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, p3, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "TS"

    const-string v0, "FX"

    .line 726
    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 722
    :cond_6
    :goto_2
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    :cond_7
    add-int/lit8 p3, p3, 0x1

    :goto_3
    return p3
.end method

.method private handleX(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5

    const/4 v0, 0x1

    if-nez p3, :cond_0

    const/16 p1, 0x53

    .line 740
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v0

    goto :goto_0

    .line 743
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    if-ne p3, v1, :cond_1

    add-int/lit8 v1, p3, -0x3

    const-string v3, "IAU"

    const-string v4, "EAU"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p1, v1, v4, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p3, -0x2

    const-string v3, "AU"

    const-string v4, "OU"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "KS"

    .line 747
    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p2, p3, 0x1

    const-string v1, "C"

    const-string v3, "X"

    .line 749
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/2addr p3, v2

    goto :goto_0

    :cond_3
    move p3, p2

    :goto_0
    return p3
.end method

.method private handleZ(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5

    add-int/lit8 v0, p3, 0x1

    .line 759
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x48

    if-ne v1, v3, :cond_0

    const/16 p1, 0x4a

    .line 761
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v2

    goto :goto_2

    :cond_0
    const-string v1, "ZO"

    const-string v3, "ZI"

    const-string v4, "ZA"

    .line 764
    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_1

    if-lez p3, :cond_1

    add-int/lit8 p4, p3, -0x1

    invoke-virtual {p0, p1, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p4

    const/16 v1, 0x54

    if-eq p4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p4, 0x53

    .line 768
    invoke-virtual {p2, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p4, "S"

    const-string v1, "TS"

    .line 766
    invoke-virtual {p2, p4, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    const/16 p2, 0x5a

    if-ne p1, p2, :cond_3

    add-int/lit8 v0, p3, 0x2

    :cond_3
    move p3, v0

    :goto_2
    return p3
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 5

    .line 875
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 876
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x57

    .line 857
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_1

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isVowel(C)Z
    .locals 1

    const-string v0, "AEIOUY"

    .line 865
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .locals 1

    if-ltz p2, :cond_1

    .line 904
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 907
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 86
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v0

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v1

    .line 94
    new-instance v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;I)V

    .line 96
    :goto_0
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_5

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc7

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd1

    const/16 v5, 0x4e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4b

    const/16 v6, 0x46

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 181
    :pswitch_0
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto :goto_0

    .line 171
    :pswitch_3
    invoke-virtual {v2, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 172
    invoke-virtual {p0, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 168
    :pswitch_4
    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto :goto_0

    .line 165
    :pswitch_5
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto :goto_0

    .line 162
    :pswitch_6
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto :goto_0

    .line 158
    :pswitch_7
    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 159
    invoke-virtual {p0, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x51

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 155
    :pswitch_8
    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto :goto_0

    .line 146
    :pswitch_9
    invoke-virtual {v2, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 147
    invoke-virtual {p0, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :pswitch_a
    const/16 v3, 0x4d

    .line 142
    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 143
    invoke-direct {p0, p1, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 139
    :pswitch_b
    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    .line 135
    :pswitch_c
    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 136
    invoke-virtual {p0, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 132
    :pswitch_d
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto/16 :goto_0

    .line 129
    :pswitch_e
    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    .line 126
    :pswitch_f
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto/16 :goto_0

    .line 122
    :pswitch_10
    invoke-virtual {v2, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 123
    invoke-virtual {p0, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 119
    :pswitch_11
    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    .line 116
    :pswitch_12
    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    :pswitch_13
    const/16 v3, 0x50

    .line 107
    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 108
    invoke-virtual {p0, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x42

    if-ne v4, v5, :cond_1

    goto/16 :goto_1

    .line 104
    :pswitch_14
    invoke-direct {p0, v2, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    .line 151
    :cond_2
    invoke-virtual {v2, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    :cond_3
    const/16 v3, 0x53

    .line 112
    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 189
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_14
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_14
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_14
        :pswitch_0
    .end packed-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 202
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 203
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;

    const-string v0, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxCodeLen()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 244
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setMaxCodeLen(I)V
    .locals 0

    .line 260
    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return-void
.end method
