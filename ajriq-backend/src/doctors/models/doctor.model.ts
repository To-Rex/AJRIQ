import { DataTypes } from 'sequelize';
import { Column, Model, Table } from 'sequelize-typescript';

interface doctorAttrs {
  id: string;
  firstName: string;
  lastName: string;
  username: string;
  password: string;
  phoneNumber: number;
}

@Table({ tableName: 'doctors' })
export class Doctor extends Model<Doctor, doctorAttrs> {
  @Column({
    primaryKey: true,
    type: DataTypes.INTEGER,
    autoIncrement: true,
  })
  id: number;

  @Column({
    type: DataTypes.STRING(120),
    allowNull: false,
  })
  firsName: string;

  @Column({
    type: DataTypes.STRING(120),
  })
  lastName: string;

  @Column({
    type: DataTypes.INTEGER,
  })
  phoneNumber: number;

  @Column({
    type: DataTypes.STRING(120),
    allowNull: false,
    unique: true,
  })
  username: string;

  @Column({
    type: DataTypes.STRING(120),
    allowNull: false,
  })
  password: string;
}
