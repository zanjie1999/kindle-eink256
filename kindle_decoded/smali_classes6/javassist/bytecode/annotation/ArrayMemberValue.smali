.class public Ljavassist/bytecode/annotation/ArrayMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "ArrayMemberValue.java"


# instance fields
.field values:[Ljavassist/bytecode/annotation/MemberValue;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x5b

    .line 39
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    return-void
.end method


# virtual methods
.method public setValue([Ljavassist/bytecode/annotation/MemberValue;)V
    .locals 1

    .line 110
    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    if-eqz p1, :cond_0

    .line 111
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 112
    aget-object p1, p1, v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 122
    :cond_0
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 123
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    .line 124
    iget-object v2, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
