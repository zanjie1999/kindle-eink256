.class final Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;
.super Ljava/lang/Object;
.source "OneofInfo.java"


# instance fields
.field private final caseField:Ljava/lang/reflect/Field;

.field private final id:I

.field private final valueField:Ljava/lang/reflect/Field;


# virtual methods
.method public getCaseField()Ljava/lang/reflect/Field;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getValueField()Ljava/lang/reflect/Field;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    return-object v0
.end method
