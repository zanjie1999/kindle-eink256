.class public abstract Ljavassist/CtClass;
.super Ljava/lang/Object;
.source "CtClass.java"


# static fields
.field public static booleanType:Ljavassist/CtClass;

.field public static byteType:Ljavassist/CtClass;

.field public static charType:Ljavassist/CtClass;

.field public static doubleType:Ljavassist/CtClass;

.field public static floatType:Ljavassist/CtClass;

.field public static intType:Ljavassist/CtClass;

.field public static longType:Ljavassist/CtClass;

.field static primitiveTypes:[Ljavassist/CtClass;

.field public static shortType:Ljavassist/CtClass;

.field public static voidType:Ljavassist/CtClass;


# instance fields
.field protected qualifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v0, v0, [Ljavassist/CtClass;

    .line 146
    sput-object v0, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    .line 148
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v2, "boolean"

    const/16 v3, 0x5a

    const-string v4, "java.lang.Boolean"

    const-string v5, "booleanValue"

    const-string v6, "()Z"

    const/16 v7, 0xac

    const/4 v8, 0x4

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    .line 152
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 154
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "char"

    const/16 v5, 0x43

    const-string v6, "java.lang.Character"

    const-string v7, "charValue"

    const-string v8, "()C"

    const/16 v9, 0xac

    const/4 v10, 0x5

    const/4 v11, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    .line 157
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 159
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "byte"

    const/16 v5, 0x42

    const-string v6, "java.lang.Byte"

    const-string v7, "byteValue"

    const-string v8, "()B"

    const/16 v10, 0x8

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    .line 162
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 164
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "short"

    const/16 v5, 0x53

    const-string v6, "java.lang.Short"

    const-string v7, "shortValue"

    const-string v8, "()S"

    const/16 v10, 0x9

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    .line 167
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 169
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "int"

    const/16 v5, 0x49

    const-string v6, "java.lang.Integer"

    const-string v7, "intValue"

    const-string v8, "()I"

    const/16 v10, 0xa

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    .line 172
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 174
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "long"

    const/16 v5, 0x4a

    const-string v6, "java.lang.Long"

    const-string v7, "longValue"

    const-string v8, "()J"

    const/16 v9, 0xad

    const/16 v10, 0xb

    const/4 v11, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    .line 177
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 179
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "float"

    const/16 v5, 0x46

    const-string v6, "java.lang.Float"

    const-string v7, "floatValue"

    const-string v8, "()F"

    const/16 v9, 0xae

    const/4 v10, 0x6

    const/4 v11, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    .line 182
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 184
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "double"

    const/16 v5, 0x44

    const-string v6, "java.lang.Double"

    const-string v7, "doubleValue"

    const-string v8, "()D"

    const/16 v9, 0xaf

    const/4 v10, 0x7

    const/4 v11, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    .line 187
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 189
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "void"

    const/16 v5, 0x56

    const-string v6, "java.lang.Void"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xb1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    .line 191
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "["

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->extendToString(Ljava/lang/StringBuffer;)V

    const-string v1, "]"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
