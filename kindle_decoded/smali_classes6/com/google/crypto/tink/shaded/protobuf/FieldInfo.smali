.class final Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final cachedSizeField:Ljava/lang/reflect/Field;

.field private final enforceUtf8:Z

.field private final enumVerifier:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldNumber:I

.field private final mapDefaultEntry:Ljava/lang/Object;

.field private final messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final oneof:Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;

.field private final oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final presenceField:Ljava/lang/reflect/Field;

.field private final presenceMask:I

.field private final required:Z

.field private final type:Lcom/google/crypto/tink/shaded/protobuf/FieldType;


# virtual methods
.method public compareTo(Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;)I
    .locals 1

    .line 384
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->fieldNumber:I

    iget p1, p1, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->fieldNumber:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->compareTo(Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public getCachedSizeField()Ljava/lang/reflect/Field;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getEnumVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->enumVerifier:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldNumber()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->fieldNumber:I

    return v0
.end method

.method public getMapDefaultEntry()Ljava/lang/Object;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageFieldClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 433
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->type:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    :goto_0
    return-object v0
.end method

.method public getOneof()Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->oneof:Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;

    return-object v0
.end method

.method public getPresenceField()Ljava/lang/reflect/Field;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getPresenceMask()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->presenceMask:I

    return v0
.end method

.method public getType()Lcom/google/crypto/tink/shaded/protobuf/FieldType;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->type:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    return-object v0
.end method

.method public isEnforceUtf8()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->enforceUtf8:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->required:Z

    return v0
.end method
